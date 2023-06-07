
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
(assert (not (= l1 Nil)) )
(assert (= l2 Nil) )
(assert (and (is-Cons Nil) (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l1 l3) (= l1 Nil)) )
(assert (or (= l3 l2) (is-Nil Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (is-Cons l3) )
(assert (= l0 Nil) )
(assert (not (= l2 Nil)) )
(check-sat)
