
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
(assert (and (= l1 Nil) (is-Cons Nil)) )
(assert (is-Cons l3) )
(assert (not (= l1 l1)) )
(assert (not (= l2 Nil)) )
(assert (or (= l1 Nil) (= l3 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (not (= l2 l0)) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
