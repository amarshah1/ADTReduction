
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
(assert (or (is-Cons l1) (= l2 Nil) (= l1 l3) (is-Cons Nil)) )
(assert (and (= l1 l2) (is-Cons Nil) (= l3 l3) (= l1 Nil)) )
(assert (= l2 Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (and (= l0 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
