
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (= l1 Nil) )
(assert (or (= l2 Nil) (is-Cons l2) (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (or (is-Cons l3) (is-Cons Nil)) )
(assert (not (= l1 l1)) )
(check-sat)
