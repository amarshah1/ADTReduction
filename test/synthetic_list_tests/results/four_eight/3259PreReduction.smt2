
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
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (= l1 Nil) (is-Cons l3) (= l0 Nil)) )
(assert (not (= l1 Nil)) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l1 Nil) (= l0 Nil)) )
(assert (= l1 l2) )
(assert (is-Cons Nil) )
(assert (and (= l0 l2) (= l1 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (= l3 Nil) (= l0 l1)) )
(check-sat)
