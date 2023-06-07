
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
(assert (and (is-Cons l0) (= l1 l1)) )
(assert (not (= l1 Nil)) )
(assert (not (= l1 l2)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (and (is-Cons l3) (is-Cons Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (or (= l1 l2) (= l0 Nil) (= l2 Nil) (= l1 Nil)) )
(check-sat)
