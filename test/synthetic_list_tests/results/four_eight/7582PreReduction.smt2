
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
(assert (and (= l0 Nil) (is-Cons l2)) )
(assert (or (= l2 l3) (= l1 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l3 l2) (= l1 l1)) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
